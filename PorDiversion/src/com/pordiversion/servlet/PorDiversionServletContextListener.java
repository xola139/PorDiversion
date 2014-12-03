package com.pordiversion.servlet;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;



import com.pordiversion.thread.Centinela;
import com.pordiversion.thread.HiloGetImages;
import com.pordiversion.thread.SocketReader;


public class PorDiversionServletContextListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		HiloGetImages.seguirCiclo=false;
		System.out.println("Servlet conext destroyed");
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		System.out.println("Servlet conext initialized ..KardumenLectura");
	}

}