@Controller
@RequestMapping("Propietarios")
public class PropietarioController
{
	@RequestMapping("Lista")
	public ModelAndView lista()
	{
		@Autowired
		PropietarioService propietarioService:
		
		List<Propietarios> listaProp = propietarioService.listProp();
		ModelAndView view = new ModelAndView("Propietarios/Lista", "listaProp", listaProp);
		
		return view;
	}
}