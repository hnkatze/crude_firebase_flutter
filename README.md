# Crude Firebase Flutter

Este proyecto es una aplicación de Flutter que permite realizar operaciones CRUD (Crear, Leer, Actualizar y Eliminar) en Firebase Firestore. Utiliza `firebase_storage` para almacenar tareas con información básica como nombre, descripción y fecha.

## Características

- Leer tareas almacenadas en Firebase Firestore.
- Crear nuevas tareas mediante un formulario modal.
- Editar tareas existentes con sus datos precargados.
- Eliminar tareas mediante un botón en la UI.
- Diseño limpio utilizando `Cards` para mostrar las tareas, con iconos de edición y eliminación.

## Instalación

Sigue estos pasos para configurar y ejecutar el proyecto en tu entorno local:

### 1. Clonar el repositorio

```bash
git clone https://github.com/hnkatze/crude_firebase_flutter.git
cd crude_firebase_flutter
```

### 2. Instalar las dependencias

Ejecuta el siguiente comando en la raíz del proyecto para instalar las dependencias de Flutter:

```bash
flutter pub get
```

### 3. Configurar Firebase

#### a. Añadir `google-services.json`

1. Crea un proyecto en [Firebase Console](https://console.firebase.google.com/).
2. Configura una nueva aplicación para Android en Firebase.
3. Descarga el archivo `google-services.json` y colócalo en el directorio `android/app/` de tu proyecto Flutter.

> **Nota:** El archivo `google-services.json` contiene la configuración específica de Firebase para tu proyecto, por lo que debe ser reemplazado por el tuyo.

#### b. Cambiar el `applicationId`

1. Abre el archivo `android/app/build.gradle`.
2. Busca la línea que contiene el `applicationId` y cámbiala por tu propio ID de aplicación que configuraste en Firebase.

```gradle
defaultConfig {
    applicationId "com.tasker.app" // Cambia esto por tu propio ID de aplicación
    minSdkVersion 21
    targetSdkVersion 30
    versionCode flutterVersionCode.toInteger()
    versionName flutterVersionName
}
```

### 4. Ejecutar la app

Una vez configurada Firebase, puedes ejecutar la aplicación en tu emulador o dispositivo físico con:

```bash
flutter run
```

## Dependencias utilizadas

- [firebase_core](https://pub.dev/packages/firebase_core) - Inicializa Firebase.
- [cloud_firestore](https://pub.dev/packages/cloud_firestore) - Permite acceder a Firestore.
- [intl](https://pub.dev/packages/intl) - Formateo de fechas.
- [firebase_storage](https://pub.dev/packages/firebase_storage) - Almacena tareas en Firestore.

## Contribuir

¡Las contribuciones son bienvenidas! Si tienes alguna sugerencia o mejora, no dudes en abrir un issue o enviar un pull request.

## Licencia

Este proyecto está bajo la [MIT License](https://opensource.org/licenses/MIT).

```

### Puntos Importantes:
- Recordatorio para cambiar el archivo `google-services.json` y el `applicationId` en el `build.gradle`.
- Instrucciones claras para clonar, instalar dependencias y configurar Firebase.
 #   c r u d e _ f i r e b a s e _ f l u t t e r  
 