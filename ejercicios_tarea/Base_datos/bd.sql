CREATE TABLE IF NOT EXISTS usuarios (
    id SERIAL PRIMARY KEY,
    usuario VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    contrasena VARCHAR(255) NOT NULL,
    rol VARCHAR(50) DEFAULT 'usuario',
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Comentarios sobre las columnas para documentación (Opcional)
COMMENT ON TABLE usuarios IS 'Tabla para almacenar la información de los usuarios del sistema';
COMMENT ON COLUMN usuarios.id IS 'Identificador único autoincrementable';
COMMENT ON COLUMN usuarios.usuario IS 'Nombre de usuario, obligatorio';
COMMENT ON COLUMN usuarios.email IS 'Correo electrónico, único y obligatorio';
COMMENT ON COLUMN usuarios.contrasena IS 'Contraseña del usuario (debería almacenarse hasheada)';
COMMENT ON COLUMN usuarios.rol IS 'Rol del usuario, por defecto "usuario"';
COMMENT ON COLUMN usuarios.fecha_creacion IS 'Fecha y hora de registro del usuario';

--  datos de ejemplo
INSERT INTO usuarios (usuario, email, contrasena, rol) VALUES 
('admin_principal', 'admin@tienda.com', 'adminSecure123!', 'admin'),
('juan_sport', 'juan.perez@email.com', 'userPass2024', 'usuario'),
('maria_sneakers', 'maria.g@email.com', 'loveShoes99', 'usuario');
