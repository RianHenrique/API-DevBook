package repositorios

//Ira fazer a comunicacao com as tabelas do banco

import (
	"api/src/modelos"
	"database/sql"
)

type Usuarios struct {
	db *sql.DB
}

func NovoRepositorioDeUsuarios(db *sql.DB) *Usuarios {
	return &Usuarios{db}
}

func (repositorio Usuarios) Criar(usuario modelos.Usuario) (uint64, error) {
	var id int

	sql := `insert into usuarios (nome, nick, email, senha) values ($1, $2, $3, $4) RETURNING id`

	erro := repositorio.db.QueryRow(sql, usuario.Nome, usuario.Nick, usuario.Email, usuario.Senha).Scan(&id)
	if erro != nil {
		return 0, erro
	}

	return uint64(id), nil
}
