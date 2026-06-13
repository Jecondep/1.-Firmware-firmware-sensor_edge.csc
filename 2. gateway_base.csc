// ======================================================================
// ARCHIVO: gateway_base.csc
// ROL: Gateway / Concentrador (Modo Rx Permanente)
// ======================================================================

loop
    // Esperar trama de radio
    wait
    
    // Leer paquete del buffer
    read paquete
    
    // Desestructurar (Header, Origen, Lectura)
    rdata paquete header node_id sensor_val
    
    if(header == "DATA")
        print ">>> TELEMETRÍA RECIBIDA <<<"
        print "Origen: Mote ID " node_id
        print "Humedad: " sensor_val
        print "--------------------------"
    end
