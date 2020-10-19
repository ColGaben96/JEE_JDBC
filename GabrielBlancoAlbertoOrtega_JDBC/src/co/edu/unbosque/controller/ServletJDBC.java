package co.edu.unbosque.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletJDBC
 */
@WebServlet("/ServletJDBC")
public class ServletJDBC extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletJDBC() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Controller c = new Controller();
		ArrayList<String> id = new ArrayList<String>(), usuario = new ArrayList<String>(),
				nombre = new ArrayList<String>(), apellido = new ArrayList<String>(), edad = new ArrayList<String>(),
				genero = new ArrayList<String>(), telefono = new ArrayList<String>(),
				direccion = new ArrayList<String>(), pais = new ArrayList<String>(), ciudad = new ArrayList<String>(),
				correo = new ArrayList<String>(), contrasena = new ArrayList<String>();
		ArrayList<ArrayList> ElementIDs = new ArrayList<ArrayList>();
		var result = c.getModelo().getDb().getAllData().split("\n");
		for (int i = 0; i < result.length; i++) {
			var aResult = result[i].split(";");
			id.add(aResult[0]);
			usuario.add(aResult[1]);
			nombre.add(aResult[2]);
			apellido.add(aResult[3]);
			edad.add(aResult[4]);
			genero.add(aResult[5]);
			telefono.add(aResult[6]);
			direccion.add(aResult[7]);
			pais.add(aResult[8]);
			ciudad.add(aResult[9]);
			correo.add(aResult[10]);
			contrasena.add(aResult[11]);
		}
		ElementIDs.add(id);
		ElementIDs.add(usuario);
		ElementIDs.add(nombre);
		ElementIDs.add(apellido);
		ElementIDs.add(edad);
		ElementIDs.add(genero);
		ElementIDs.add(telefono);
		ElementIDs.add(direccion);
		ElementIDs.add(pais);
		ElementIDs.add(ciudad);
		ElementIDs.add(correo);
		ElementIDs.add(contrasena);
		request.setAttribute("Elementos", ElementIDs);
		request.setAttribute("listaIDS", id);
		request.setAttribute("listaUsuarios", usuario);
		request.setAttribute("listaNombres", nombre);
		request.setAttribute("listaApellidos", apellido);
		request.setAttribute("listaEdades", edad);
		request.setAttribute("listaGeneros", genero);
		request.setAttribute("listaTelefonos", telefono);
		request.setAttribute("listaDirecciones", direccion);
		request.setAttribute("listaPaises", pais);
		request.setAttribute("listaCiudades", ciudad);
		request.setAttribute("listaCorreos", correo);
		request.setAttribute("listaContrasenas", contrasena);
		RequestDispatcher myDispatcher = request.getRequestDispatcher("/index.jsp");
		myDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
