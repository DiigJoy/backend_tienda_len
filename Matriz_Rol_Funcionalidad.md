```mermaid
flowchart TD
    %% Roles
    R1[ROL_ADMIN]
    R2[ROL_USUARIO]
    R3[ROL_INVITADO]

    %% Funcionalidades principales
    F1[Ver Productos]
    F2[Buscar Productos]
    F3[Registrarse]
    F4[Crear Producto Personalizado]
    F5[Comprar Producto]
    F6[Ver Historial de Pedidos]
    F7[Añadir a Favoritos]
    F8[Ver Notificaciones]
    F9[Subscribirse a Newsletter]
    F10[Crear/Editar/Eliminar Productos]
    F11[Ver Dashboard / Métricas]
    F12[Gestionar Usuarios / Pedidos / Pagos]

    %% ROL_ADMIN
    R1 --> F1
    R1 --> F2
    R1 --> F4
    R1 --> F5
    R1 --> F6
    R1 --> F7
    R1 --> F8
    R1 --> F9
    R1 --> F10
    R1 --> F11
    R1 --> F12

    %% ROL_USUARIO
    R2 --> F1
    R2 --> F2
    R2 --> F4
    R2 --> F5
    R2 --> F6
    R2 --> F7
    R2 --> F8
    R2 --> F9

    %% ROL_INVITADO
    R3 --> F1
    R3 --> F2
    R3 --> F3
    R3 --> F9

```
