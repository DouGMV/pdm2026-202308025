# Alcance del MVP — Douglas Morales

**Estudiante (carnet):** *[202308025]*
**Entrevistado (alias):** Douglas Morales
**Problema del que parte (S3):** F4 — Error y Bloqueo (fondo del valle emocional)

---

## 1. Usuario objetivo

> **Douglas Morales**, estudiante universitario que administra varias cuentas personales a diario, guarda casi todas sus contraseñas en un **cuaderno físico** y prioriza la **velocidad de acceso** por encima de las medidas de seguridad tradicionales.

**Qué lo define como usuario (y no a cualquiera):**

| Rasgo | Evidencia (S2/S3) |
| :--- | :--- |
| Maneja múltiples plataformas y varía sus contraseñas sin apoyo | *"Trato de variar mis contraseñas, pero al final me hago bolas y no me acuerdo cuál usé en cada lugar."* |
| Ya tiene una solución improvisada que quiere reemplazar | *"Tengo un cuaderno físico donde anoto casi todas mis contraseñas."* |
| Su dolor se dispara bajo presión de tiempo | *"Me estresa cuando tengo que recuperar el acceso a algo justo cuando ando con prisa."* |
| Percibe la seguridad como fricción, no como beneficio | Considera el 2FA "un paso extra necesario, pero que complica el acceso y quita tiempo". |

**Fuera del usuario objetivo (por ahora):** usuarios corporativos con políticas de TI, equipos que comparten credenciales, y personas que ya usan un gestor de contraseñas con soltura técnica.

---

## 2. Tarea #1

> **Cuando Douglas necesita entrar a una plataforma y no recuerda cuál contraseña le corresponde, abre la app, se autentica con biometría y obtiene la credencial correcta de esa cuenta en segundos, sin abrir el cuaderno.**

**Por qué esta y no otra:**
El valle está en F4 (Error y Bloqueo), pero el mensaje de error genérico lo produce el sitio de terceros y la app no lo controla. Lo que sí se puede atacar es **la causa que lo lleva al error**: la incertidumbre sobre cuál contraseña corresponde a cada plataforma (F3). Si Douglas llega al login ya con la credencial correcta, el intento fallido —y con él el estrés, el bloqueo y la recuperación por correo— simplemente no ocurre.

**Lo que la tarea #1 NO incluye en este MVP:**
- Generador de contraseñas fuertes (F1).
- Alertas de filtraciones / *data breach monitoring* (deseo declarado, pero no es el dolor más profundo).
- Autocompletado dentro del navegador o de otras apps.
- Sincronización entre dispositivos o compartición de credenciales.

---

## 3. Criterios de éxito

### Criterio 1 — Velocidad de recuperación bajo prisa
Douglas localiza y copia la credencial correcta de una cuenta en **≤ 20 segundos**, contados desde que abre la app, en **4 de 5 intentos** de una prueba con cuentas distintas.

* **Cómo se mide:** prueba de usabilidad cronometrada con 5 tareas de búsqueda, sin ayuda del facilitador.
* **Por qué importa:** si tardar en la app se acerca a lo que tarda en abrir el cuaderno, no hay razón para cambiar de hábito.

### Criterio 2 — Acceso correcto al primer intento
En esas 5 tareas, Douglas entra a la cuenta **al primer intento en al menos 4 de 5 casos** y **no recurre al cuaderno físico en ninguna**.

* **Cómo se mide:** conteo de intentos fallidos de login y observación directa de si consulta una fuente externa.
* **Por qué importa:** es la medida directa de que el valle F4 se evitó; si sigue abriendo el cuaderno, la app no reemplazó la solución improvisada, solo la duplicó.

---

## 4. Test del alcance (validación)

- [x] **¿El usuario objetivo es una persona concreta y no "todo el mundo"?** Sí: Douglas, con evidencia de entrevista.
- [x] **¿La tarea #1 es una sola y sale del valle emocional del mapa?** Sí: ataca la incertidumbre de F3 que desemboca en el bloqueo de F4.
- [x] **¿Los criterios son observables y medibles, no opiniones?** Sí: tiempo, intentos fallidos y uso del cuaderno; ninguno depende de que el usuario diga "me gustó".
- [x] **¿El alcance dice explícitamente qué queda fuera?** Sí: generador, alertas de filtración, autocompletado y sincronización quedan fuera del MVP.