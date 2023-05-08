package br.edu.infnet.springmvc.controller;

import br.edu.infnet.springmvc.model.negocio.User;
import br.edu.infnet.springmvc.model.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@SessionAttributes("user")
public class UserController
{
	@Autowired
	private UserService userService;
	private User usuarioLogado;
	@PostMapping(value = "/user/login1")
	public String login(Model model, @RequestParam String email, @RequestParam String senha)
	{
		usuarioLogado = userService.autenticacao(email, senha);
		if (usuarioLogado != null)
		{
			model.addAttribute("user", usuarioLogado);
			return "redirect:/home";
		}
		model.addAttribute("erro", "Verifique suas credenciais e tente novamente.");
		return "login1";
	}
	
	@GetMapping(value = "/user")
	public String showUsuario(Model model)
	{
		model.addAttribute("voltar", "/");
		return "user/detalhe";
	}
	
	@GetMapping(value = "/user/novo")
	public String showUsuarioLogado(Model model)
	{
		model.addAttribute("voltar", "/user/conta");
		return "user/detalhe";
	}
	
	@GetMapping(value = "/user/conta")
	public String showConta(Model model)
	{
		model.addAttribute("lista", userService.obterLista());
		return "user/conta";
	}
	
	@PostMapping(value = "/user/incluir")
	public String incluir(User user)
	{
		userService.incluir(user);
		return "user/confirmacao";
	}
	
	@GetMapping(value = "/user/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id)
	{
		try {
			userService.excluir(id);
		} catch (Exception e) {
			model.addAttribute("erro", "<strong>Erro!</strong> Não é possível excluir um usuário que possui clientes.");
			return showConta(model);
		}
		return "redirect:/user/conta";
	}

	public User getUsuarioLogado() {
		return usuarioLogado;
	}
}
