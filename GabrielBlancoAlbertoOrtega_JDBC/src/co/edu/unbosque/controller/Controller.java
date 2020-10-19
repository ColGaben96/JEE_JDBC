package co.edu.unbosque.controller;

import co.edu.unbosque.model.ModeloJDBC;

public class Controller {
	private ModeloJDBC modelo = new ModeloJDBC();

	public ModeloJDBC getModelo() {
		return modelo;
	}
}
