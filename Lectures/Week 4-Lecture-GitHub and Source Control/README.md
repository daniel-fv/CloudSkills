## Guía Github 
Tutorial básico git y github.

## Sistema distribuido de control
![](images/distributed-version-control.png)

- Cada persona guarda una copia del repositorio principal en su computadora.
- Cada cambio que se guarde (se hace 'commit') se realiza en esa copia en cada computadora de cada persona. 
- No requiere acceso a internet sino hasta que se hace un push al repositorio principal.

## Mejores prácticas
- **No hacer commits de contraseñas**.
- **Escribir buenos mensajes de commit**, resumen de por qué se realizó el cambio:
  - Malo: "actualicé una variable". No permite saber qué variable fue o por qué se hizo el cambio.
  - Bueno: "variable 'ubicación' se actualizó por nuevos cambios de regiones". Da a entender la razón de la actualización y el código modificado.
- **Seguir mejores prácticas para los branches**. Asegurarse de que estamos haciendo commit al branch correcto. Si es una nueva característica la que estamos agregando, hacemos el commit al branch 'features'; si es un hotfix el que se está realizando, hacemos commit al branch 'hotfix'.
- **Hacer commits seguidos**. Así nos aseguramos que los últimos cambios se estén almacenando en Github continuamente.
- **Probar el código antes de hacer commit**.

## Branches
Un branch es el alcance de un trabajo que se está realizando. Ya sea agregar una nueva característica, componiendo un error en el código, etc.

Algunos nombres para comunes:
1. **master/main** - es el código en producción. El único código que puede ejecutarse para infraestructura en producción. Debe ser exacto a lo que está en producción.
2. **develop** - lo que está apunto de entrar a producción (en master/main). Una nueva característica que ya ha sido probada entra al branch 'develop'.
3. **feature** - se pueden tener varios branches de tipo 'feature'. Puede crearse desde para agregar una nueva variable hasta agregar una nueva función. Normalmente se escriben así *feature/nueva_funcion*. 
   
   Por ejemplo, si necesitamos integrar funcionalidad de un Azure Blob Storage podemos nombrarla así: feature/integracion-blog.
4. **bugfix** - para componer algún bug que tenga el código. Se nombra: bugfix/nombre-del-bug
5. **hotfix** - para actuar de inmediato ante un problema en el código en el branch 'main'. Algo que debe ser corregido de inmediato y no se puede introducir al proceso del branch 'develop', para algo que ya está en producción.
6. **username** - para cuando se está haciendo modificaciones a documentación y no necesariamente a código. Ejemplo: daniel/nuevo-procedimiento

En la imagen se puede ver que ninguna de las nuevas características entran al 'master', modificaciones se hacen en el 'develop'
![](images/github-branches.png)

Otra forma más completa de ver todos los posibles branches.
![](images/github-branches-with-hotfix.png)


## Instalación de git
**Git** es la herramienta que utilizamos para trabajar con repositorios, branches y con la cual hacemos commit, push y merge. **Github** es el sitio web que aloja repositorios, interactuamos con Github por medio de git al igual que lo podríamos hacer con otros repositorios como Gitlab o Bitbucket.

- Instalamos git: https://git-scm.com/download/win

Verificamos instalación corriendo desde línea de comando o terminal en VSCode:
```bash
git version
```
Configuramos nuestro usuario con git:
```bash
git config --global user.name "nombre-usuario"
git config --global user.email johndoe@example.com
```

## Procedimiento de trabajo  en Github

![](images/github-exercise.png)

1. **Clonamos** el repositorio en el que vamos a trabajar
2. Creamos un **nuevo branch**
3. Hacemos modificaciones al branch
4. Hacemos **commit** al branch **local**
5. Hacemos **push** del código al **repositorio**
6. Hacemos **pull request** y **merge** de los cambios con el **master**

## Clonamos un repositiorios
Seleccionamos uno de los repositorios a clonar
![](images/github-repositories.png)

Copiamos el url del repositorio
![](images/git-clone.png)

Abrimos terminal dentro de VS Code con **Ctrl-`** o en **View -> Terminal**. 

Cambiamos o creamos el directorio donde vamos a clonar y clonamos el repositorio.
```bash
mkdir microsoft-365
cd microsoft-365
git clone https://github.com/nova-cloud/Microsoft-365.git
```
![](images/git-clone-repo.png)

Con esto ya tenemos una copia del repositorio en nuestra computadora.

Desde el directorio donde se encuentra el repositorio, abrimos VS Code:

```bash
code .
```

## Creamos un nuevo branch
Miremos primero en qué branch estamos
```bash
git branch
```
![](images/git-branch.png)

Creamos el nuevo branch 
```bash
git checkout -b daniel/implementacion-mfa
```
Revisamos nuevamente en que branch estamos
```bash
git branch
```
Cualquier cambio que hagamos estará en el branch nuevo. 

Recordar guardar el archivo antes del siguiente paso.

## Hacemos commit al branch local

Agregamos todos los archivos para el commit desde terminal
```bash
git add .
```
Lo mismo lo podemos hacer desde VS Code:

![](images/git-commit-vscode.png)

Hacemos commit escribiendo un mensaje que describa lo que hicimos. Nos fijamos que estamos haciendo commit al branch correcto donde dice (commit on 'daniel/implementacion-mfa').
```bash
git commit - m 'comentarios sobre cambios que hicimos'
```
![](images/git-commit-message.png)

## Hacemos push al repositorio en Github
Desde la terminal usamos:
```bash
git push origin daniel
```
Le estamos diciendo que haremos un push al origin (repositorio original en Github) pero desde nuestro branch (daniel).

Lo mismo podemos hacer desde VS Code
![](images/github-push.png)

## Hacemos solicitud para mezclar nuestro branch con el main
Entramos al repositorio en Github

![](images/github-pull-request.png)


Escribrimos comentarios sobre la solicitud para mezclar los cambios de nuestro branch con main.
![](images/github-pull-request-comment.png)

El propietario del repositorio puede ver los cambios que se realizarían cuando se apruebe la solicitud.

![](images/github-review-changes.png)

Si todo está correcto se aprueba el merge:
![](images/github-merge.png)


## Actualizando cambios de Github a nuestra computadora
```bash
git pull
```

Leer más:
- [Gitflow Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow#:~:text=Git-flow%20is%20a%20wrapper%20around%20Git.%20The%20git,your%20repository%20other%20than%20creating%20branches%20for%20you)