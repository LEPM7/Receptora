/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servicios;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author luisperalta
 */
@WebService(serviceName = "ReceptorService")
public class ReceptorService {

    @WebMethod(operationName = "RecepcionDeRemesa") 
    public String RecepcionDeRemesa
        (@WebParam(name = "usuario")String u, @WebParam(name = "contrasena")String c, 
                @WebParam(name = "remesas")String r){
        return new String();
    }
        
    @WebMethod(operationName = "PagoDeRemesa")
    public String PagoDeRemesa(
    @WebParam(name = "usuario")String u, @WebParam(name = "contrasena")String c, 
            @WebParam(name = "nombre_emisor")String ne, @WebParam(name = "id_remesa")int i, 
            @WebParam(name = "codigo_seguridad")String cs, @WebParam(name = "nombre_receptor")String nr, 
            @WebParam(name = "dpi_receptor")String dr){
        return new String();
    }
    
    @WebMethod(operationName = "ListarRemesasRecibidas") 
    public String ListarRemesasRecibidas
        (@WebParam(name = "usuario")String u, @WebParam(name = "contrasena")String c, 
                @WebParam(name = "id_remesa")int i, @WebParam(name = "nombre_emisor")String ne, 
                @WebParam(name = "nombre_receptor")String nr, @WebParam(name = "monto_q")double mq, 
                @WebParam(name = "monto_us")double mu, @WebParam(name = "fecha_envio")String fenv, 
                @WebParam(name = "fecha_entrega")String fent, @WebParam(name = "estado_remesa")String er){
        return new String();
    }
        
    @WebMethod(operationName = "ConsultaRemesaEspecifica") 
    public String ConsultaRemesaEspecifica
        (@WebParam(name = "usuario")String u, @WebParam(name = "contrasena")String c, 
                @WebParam(name = "id_remesa")int i, @WebParam(name = "nombre_emisor")String ne, 
                @WebParam(name = "nombre_receptor")String nr, @WebParam(name = "monto_q")double mq, 
                @WebParam(name = "monto_us")double mu, @WebParam(name = "fecha_envio")String fenv, 
                @WebParam(name = "fecha_entrega")String fent, @WebParam(name = "estado_remesa")String er){
        return new String();
    }
//    @WebMethod(operationName = "")     
//    @WebParam(name = "")
}
