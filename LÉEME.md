# Commits counter

Un script de shell para calcular el número agregado de commits de todo el equipo de desarrollo de Redradix durante el año 2022.

Es agnóstico con respecto a la forja de código utilizada; utiliza las copias locales de los repositorios en tu ordenador.

## Uso

Clona el repositorio o [descarga el script](./commits-counter.sh) directamente en tu ordenador; por ejemplo, en `~/bin/counts-commits`. Asegúrate de que es ejecutable.

El script está pensado para ser ejecutado en una carpeta de tu sistema de ficheros de la que cuelguen, a cualquier nivel, los repositorios cuyos commits se quieren contar.


```sh
$ cd ~/Proyectos
$ ~/bin/count-commits
Entrando en ./repositorio-1/.git
Actualizando referencias desde el repositorio remoto
Commits en el repo: 89

Entrando en ./repositorio-2/en-subcarpeta/.git
Actualizando referencias desde el repositorio remoto
Commits en el repo: 376

Entrando en ./repositorio-3/sin-acceso-al-remoto/.git
Actualizando referencias desde el repositorio remoto
git fetch falló, puede que falten algunos commits
Commits en el repo: 245


Total de commits contados: 710
```

Actualmente no se detectan repositorios que no cuenten con espacio de trabajo; en otras palabras, los repositorios deben tener una carpeta `.git`.

## Agradecimientos

Este script no hubiera sido tan divertido de escribir sin los siguientes compañeros, en orden alfabético y sin señalar cuáles de ellos son inteligencias artificiales:

- [@alejandroredradix](https://github.com/alejandroredradix)
- [@cintaroja-RR](https://github.com/cintaroja-RR)
- [@enrique-redradix](https://github.com/enrique-redradix)
- [@migueldelmazo](https://github.com/migueldelmazo)
- [@SamuelRedradix](https://github.com/SamuelRedradix)
- [@pacosegovia](https://github.com/pacosegovia)

## Licencia

El script es software libre. Este repositorio sigue la [especificación REUSE](https://reuse.software/), por lo que cada fichero tiene una cabecera de _copyright_ o se lista [en el fichero DEP-5](.reuse/dep5). Puedes consultar el texto completo de cada licencia en [la carpeta `LICENSES`](LICENSES/).
