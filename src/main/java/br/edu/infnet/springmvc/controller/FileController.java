package br.edu.infnet.springmvc.controller;

import br.edu.infnet.springmvc.model.negocio.File;
import br.edu.infnet.springmvc.model.negocio.User;
import br.edu.infnet.springmvc.model.service.FileService;

import java.io.IOException;
import java.util.List;
import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class FileController
{
    @Autowired
    private FileService fileService;

    @RequestMapping("")
    public String consulta(Model model)
    {
        model.addAttribute("lista", fileService.consultar());
        return "consulta";
    }

    @RequestMapping("/file/cadastro")
    public String cadastro(@SessionAttribute("user") User usuarioLogado, Model model, @RequestParam String description,
                           @RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) throws IOException
    {
            File fileUpload = new File();
            fileUpload.setFile_name(file.getOriginalFilename());
            fileUpload.setData(file.getBytes());
            fileUpload.setContentType(file.getContentType());
            fileUpload.setDescription(description);
            fileUpload.setExcluido("N");
            fileUpload.setUsuario(usuarioLogado);
            fileService.salvar(fileUpload);
            redirectAttributes.addFlashAttribute("msg",
                    "Arquivo importado com sucesso " + file.getOriginalFilename() + "!");
        return "redirect:/upload";
    }

    @RequestMapping("/folder")
    public String folder (@SessionAttribute("user") User usuarioLogado, Model model)
    {
        model.addAttribute("lista", fileService.procurar(usuarioLogado,""));
        return "folder";
    }

    @RequestMapping("/home")
    public String home (Model model)
    {
        File file = new File();
        model.addAttribute("file", file);
        return "home";
    }

    @RequestMapping("/procurar")
    public String procurar (@SessionAttribute("user") User usuarioLogado,Model model,@RequestParam String keyword)
    {
        model.addAttribute("lista", fileService.procurar(usuarioLogado,keyword));
        return "folder";
    }

    @GetMapping("/download/{id:.+}")
    @ResponseBody
    public ResponseEntity<byte[]> getFile(@PathVariable int id)
    {
        File arquivo = fileService.consultarPorId(id);
            return ResponseEntity.ok()
                    .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + arquivo.getFile_name() + "\"")
                    .body(arquivo.getData());
    }

    @GetMapping("/excluir/{id:.+}")
    public String enviarLixeira(@PathVariable int id)
    {
        File arquivo = fileService.consultarPorId(id);
        arquivo.setExcluido("S");
        fileService.salvar(arquivo);
        return "redirect:/folder";
    }

    @RequestMapping("/upload")
    public String upload(Model model)
    {
        return "upload";
    }

    @RequestMapping("/trash")
    public String lixeira (@SessionAttribute("user") User usuarioLogado, Model model)
    {
        model.addAttribute("lista", fileService.procurarLixeira(usuarioLogado,""));
        return "trash";
    }

    @RequestMapping("/procurarLixeira")
    public String procurarLixeira (@SessionAttribute("user") User usuarioLogado, Model model,@RequestParam String keyword)
    {
        model.addAttribute("lista", fileService.procurarLixeira(usuarioLogado,keyword));
        return "trash";
    }

    @GetMapping("/restaurar/{id:.+}")
    public String restaurar(@PathVariable int id)
    {
        File arquivo = fileService.consultarPorId(id);
        arquivo.setExcluido("N");
        fileService.salvar(arquivo);
        return "redirect:/trash";
    }

    @GetMapping("/excluirLixeira/{id:.+}")
    public String excluir(@PathVariable int id)
    {
        fileService.excluir(id);
        return "redirect:/trash";
    }
}
