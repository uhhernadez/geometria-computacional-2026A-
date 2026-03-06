# Elaboración de la Actividad: Mosaicos y Mandalas

El objetivo es usar un motivo geométrico simple —como la clase `Cuadrado` que
has usado antes, o incluso solo una combinación de `rect()` y `ellipse()`— y
repetirlo a través del lienzo de una manera estructurada.

En el contexto de la creación de mandalas y otros patrones generativos, la
palabra "motivo" se refiere a la unidad visual básica que se repite para
construir el diseño completo.

Piénsalo como un solo "ladrillo" o "azulejo" en un mosaico.

---

### Parte A: Mosaico en Rejilla

Se trata de crear un patrón repetitivo usando un sistema de rejilla.

1.  **Define la Rejilla:** Decide cuántas filas y columnas quieres. Calcula el
    ancho y el alto de cada celda de la rejilla (`anchoCelda = width /
    numColumnas`, `altoCelda = height / numFilas`).

2.  **Usa Bucles Anidados:** Un bucle `for` para las columnas dentro de un bucle
    `for` para las filas es la forma estándar de recorrer cada celda.
    ```java
    for (int i = 0; i < numColumnas; i++) {
      for (int j = 0; j < numFilas; j++) {
        // Tu código de dibujo para una celda va aquí
      }
    }
    ```

3.  **Traslada al Centro de la Celda:** Dentro de los bucles, antes de dibujar
    tu motivo, usa `pushMatrix()` para guardar el estado actual. Luego, usa
    `translate()` para mover el origen (0,0) al centro de la celda actual. Esto
    hace que dibujar sea mucho más fácil.
    ```java
    float x = i * anchoCelda + anchoCelda / 2;
    float y = j * altoCelda + altoCelda / 2;
    pushMatrix();
    translate(x, y);
    // Dibuja tu motivo aquí, centrado en (0,0)
    popMatrix();
    ```

4.  **Dibuja el Motivo:** Ahora que estás en el centro de la celda, puedes
    dibujar tu forma. Puedes añadir rotaciones o escalados que sean únicos para
    cada celda usando las variables de los bucles `i` y `j`.

---

### Parte B: Mandala Circular

Implica organizar tu motivo en un círculo alrededor de un punto central.

1.  **Define las Repeticiones:** Decide cuántas veces quieres repetir el motivo
    en el círculo (ej. `int numSegmentos = 12;`).

2.  **Calcula el Ángulo:** El ángulo total de un círculo es de `360` grados o
    `TWO_PI` radianes. El ángulo para cada segmento es `float anguloPaso =
    TWO_PI / numSegmentos;`.

3.  **Usa un Bucle Único:** Haz un bucle de `0` a `numSegmentos`.

4.  **Traslada y Rota:**
    *   Primero, haz `translate()` al centro del lienzo (`width/2`, `height/2`).
        Este será el punto de pivote para tu mandala.
    *   Dentro del bucle, rota (`rotate()`) por `i * anguloPaso`. Esto gira el
        lienzo para cada nuevo segmento.
    *   Después de rotar, puedes dibujar tu motivo a una cierta distancia del
        centro (ej. `rect(100, 0, 50, 50);`). Como el lienzo ya está rotado, la
        forma aparecerá en la posición circular correcta.
    *   Es crucial usar `pushMatrix()` y `popMatrix()` para aislar estas
        transformaciones.

---

### Creando un Esquema de Color Degradado

Para el mandala, un degradado de color de un lado a otro puede crear un efecto
hermoso. La clave es la función `lerpColor()` de Processing, que interpola entre
dos colores.

**Concepto:** `lerpColor(color1, color2, cantidad)`

*   `color1`: El color de inicio.
*   `color2`: El color final.
*   `cantidad`: Un `float` de `0.0` (devuelve `color1`) a `1.0` (devuelve
    `color2`). Un valor de `0.5` sería una mezcla perfecta de los dos.

**Implementación para el Mandala:**

1.  **Define tu Paleta:** En la parte superior de tu sketch, define tus colores
    de inicio y fin.
    ```java
    color colorInicio;
    color colorFin;

    void setup() {
      size(800, 800);
      colorMode(RGB); // O HSB, que puede ser aún mejor para degradados
      colorInicio = color(255, 100, 0); // Un naranja
      colorFin = color(0, 100, 255);   // Un azul
    }
    ```

2.  **Calcula la Cantidad de Interpolación en el Bucle:** Dentro del bucle `for`
    de tu mandala, necesitas generar el valor de `cantidad`. Puedes derivarlo
    directamente del contador del bucle.
    ```java
    int numSegmentos = 30;
    for (int i = 0; i < numSegmentos; i++) {
      // Mapea el contador del bucle 'i' a un rango de 0.0 a 1.0
      float cantidad = (float)i / (numSegmentos - 1);
      
      // Calcula el color para este segmento específico
      color colorActual = lerpColor(colorInicio, colorFin, cantidad);
      
      // Usa este color para el relleno (fill) o el borde (stroke)
      fill(colorActual);
      stroke(colorActual); // O usa un solo color para todos los bordes
      
      // ... tu código de transformación y dibujo ...
    }
    ```

**Ejemplo de la función `draw()` para el Mandala:**

```java
void draw() {
  background(0);
  int numSegmentos = 40;
  float anguloPaso = TWO_PI / numSegmentos;

  // Mueve el origen al centro para que actúe como pivote
  translate(width / 2, height / 2);

  for (int i = 0; i < numSegmentos; i++) {
    // --- Cálculo del Color ---
    float cantidad = (float)i / (numSegmentos - 1);
    color colorActual = lerpColor(colorInicio, colorFin, cantidad);
    
    pushMatrix();
    // Rota el lienzo para el segmento actual
    rotate(i * anguloPaso);
    
    // --- Dibujo del Motivo ---
    // El motivo se dibuja a una distancia del centro.
    // Todo el dibujo ocurre en relación al lienzo ya rotado.
    stroke(colorActual);
    noFill();
    // Motivo de ejemplo: un círculo y una línea
    ellipse(150, 0, 80, 80); 
    line(200, 0, 250, 0);
    
    popMatrix();
  }
}
```
