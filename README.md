# Demo CI/CD — Integración Continua

Proyecto mínimo para ver en vivo el proceso completo de integración continua
y despliegue automatizado, sin complicaciones técnicas.

## Qué hay aquí

| Archivo | Para qué sirve |
|---|---|
| `calculadora.py` | El código de la aplicación (dos funciones simples). |
| `test_calculadora.py` | Las pruebas automáticas (pytest). |
| `requirements.txt` | Las dependencias del proyecto. |
| `Dockerfile` | Empaqueta la app en un contenedor. |
| `.github/workflows/ci.yml` | El pipeline: build → pruebas → despliegue. |

## El flujo que vamos a ver

1. Alguien hace un cambio y lo sube al repositorio (push).
2. GitHub Actions levanta un contenedor limpio.
3. Instala dependencias y corre las pruebas.
4. Si todo pasa (verde) y es la rama `main`, se dispara el despliegue.
5. Si algo falla (rojo), el despliegue no ocurre.

## Correr las pruebas en tu máquina

```bash
pip install -r requirements.txt
pytest -v
```

## Correr dentro del contenedor

```bash
docker build -t demo-ci .
docker run demo-ci
```
