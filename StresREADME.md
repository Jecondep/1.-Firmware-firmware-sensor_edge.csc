# Smart Farming Pastaza - Infraestructura TIC 🌿🛰️

Repositorio oficial de la memoria técnica para el diseño de una red de sensores inalámbricos (WSN) bajo el estándar **IEEE 802.15.4** en la provincia de Pastaza, Amazonía Ecuatoriana.

## 📌 Descripción del Proyecto
Diseño de arquitectura de comunicación híbrida para capturar variables microclimáticas en entornos disruptivos (planta industrial y campo abierto).

### Tecnologías Utilizadas
* **Simulador:** CupCarbon U-One 5.0
* **Lenguaje:** ScriptCox (CSC)
* **Frecuencias:** 2.4 GHz (Escenario A) y 915 MHz (Escenario B)
* **Mapa:** Integración GIS con OpenStreetMap

## 📊 Resultados de Simulación (Métricas TIC)
| Escenario | PDR (%) | Consumo (mA) | Colisiones/h |
|-----------|---------|--------------|--------------|
| 2.4 GHz   | 42.3%   | 18.4 mA      | 245          |
| 915 MHz   | 98.7%   | 2.1 mA       | 1.2          |

## 🚀 Cómo ejecutar la simulación
1. Descargue e instale [CupCarbon](http://www.cupcarbon.com/).
2. Clone este repositorio: `git clone https://github.com/usuario/smart-farming-pastaza.git`.
3. Abra CupCarbon y cargue el archivo `simulation/project_config.pjt`.
4. Asigne los scripts de la carpeta `/firmware` a los nodos correspondientes:
   * **Nodo 1:** `gateway_base.csc`
   * **Nodos 2-9:** `sensor_edge.csc`
5. Presione el botón **Play** y observe las métricas en la consola.

## 👨‍💻 Integrantes
* Estudiante 1 - Universidad Estatal Amazónica
* Estudiante 2 - Universidad Estatal Amazónica

## 📄 Licencia
Este proyecto está bajo la Licencia MIT.
