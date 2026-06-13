// ======================================================================
// ARCHIVO: sensor_edge.csc
// ROL: Nodo Sensor con Duty Cycling y Multi-hop
// ======================================================================

loop
    // 1. Lectura del sensor (Humedad de suelo)
    atread hum_suelo
    
    // 2. LÃ³gica de Alerta Local
    if(hum_suelo < 400)
        print "CRITICAL: Humedad de suelo baja en Pastaza"
    end
    
    // 3. CreaciÃ³n del mensaje (Header, ID, Valor)
    data msg "DATA" id hum_suelo
    
    // 4. Enrutamiento Multi-salto (Multi-hop)
    // El Nodo 8 envÃ­a al 5, el 5 al 1 (Gateway)
    if(id == 8)
        send msg 5
    else
        if(id == 5)
            send msg 1
        else
            send msg 1
        end
    end
    
    print "Msg enviado por ID: " id " - Valor: " hum_suelo
    
    // 5. Rutina de Bajo Consumo (Duty Cycling)
    // El radio se apaga y el MCU duerme por 5000ms
    delay 5000
