-- V1__create_user_tables.sql

-- Crear enum para roles
CREATE TYPE user_role AS ENUM ('USER', 'ADMIN');

-- Crear tabla de usuarios
CREATE TABLE users (
    id BIGSERIAL PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    role VARCHAR(50) NOT NULL DEFAULT 'USER',
    enabled BOOLEAN NOT NULL DEFAULT true,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Crear índices
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_role ON users(role);

-- Insertar usuario admin inicial (opcional)
INSERT INTO users (email, password, first_name, last_name, role, enabled)
VALUES (
    'admin@tienda.com',
    '$2a$10$xn3LH/AjqicFI9k3iHUUH.8fxNJPLHQHfYRLvkk5Tg1dP8KJdM6XG', -- password: admin123
    'Admin',
    'User',
    'ADMIN',
    true
);