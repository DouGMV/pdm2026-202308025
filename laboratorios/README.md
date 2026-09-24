<img width="1910" height="887" alt="Captura de pantalla 2026-09-24 100415" src="https://github.com/user-attachments/assets/1ed0ce96-8635-4be2-b126-5c7b4357d475" />
<img width="1920" height="891" alt="Captura de pantalla 2026-09-24 100500" src="https://github.com/user-attachments/assets/72b62bf3-09bb-4b04-9513-8e0c9bd3536c" />

¿Que hace setState cuando presiona un boton y que ocurriria si cambia los puntos sin llamarlo?
Cuando se presiona un boton suceden 2 acciones

Actualización del estado: Modifica los valores de las variables
Reconstruye la interfaz

¿Qué ocurriría si cambia los puntos sin llamarlo?
Si se modifica el valor de puntosA o puntosB directamente sin utilizar setState:
el valor cambia en la memoria variable interna sí se incrementará o decrementará de forma lógica
y la interfaz no se actualiza la pantalla no reflejará el cambio.
