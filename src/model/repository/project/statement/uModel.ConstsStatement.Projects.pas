unit uModel.ConstsStatement.Projects;

interface

const
  ROWS_AFFECTED = 1;

  QUERY_PROJECTS =
    'SELECT project_cod, ' + sLineBreak +
    '       name, ' + sLineBreak +
    '       description, ' + sLineBreak +
    '       start_date, ' + sLineBreak +
    '       end_date, ' + sLineBreak +
    '       status ' + sLineBreak +
    '  FROM tab_projects PRO';

  QUERY_INSERT_PROJECTS =
    //'DECLARE @LastInsertId INT; ' + sLineBreak +
    'INSERT INTO tab_projects(name, description, start_date, end_date, status) ' + sLineBreak +
    'OUTPUT INSERTED.project_cod '+ sLineBreak +
    'VALUES(:name, :description, :start_date, :end_date, :status) '; // + sLineBreak +
    //'SELECT project_cod FROM @LastInsertId';

    {  SQL_PERSISTIR_USUARIO =
    'INSERT INTO Usuarios ' + ENTER +
    '       (Nome, ' + ENTER +
    '        Login, ' + ENTER +
    '        Senha, ' + ENTER +
    '        Status, ' + ENTER +
    '        Sexo, ' + ENTER +
    '        Telefone, ' + ENTER +
    '        Email, ' + ENTER +
    '        Credito, ' + ENTER +
    '        DtCadastro ' + ENTER +
		'	) ' + ENTER +
    '    OUTPUT INSERTED.IdUsuario ' + ENTER +
    ' VALUES ' + ENTER +
    '       (:Nome, ' + ENTER +
    '        :Login, ' + ENTER +
    '        :Senha, ' + ENTER +
    '        :Status, ' + ENTER +
    '        :Sexo, ' + ENTER +
    '        :Telefone, ' + ENTER +
    '        :Email, ' + ENTER +
    '        :Credito, ' + ENTER +
    '        :DtCadastro ' + ENTER +
		'	       )'; }


  QUERY_LASTINSERTID_PROJECTS =
    'SELECT SCOPE_IDENTITY() AS LastInsertId';

  QUERY_CLASE_WHERE_BY_COD = ' WHERE project_cod = :project_cod ';

  QUERY_PROJECTS_BY_COD = QUERY_PROJECTS + sLineBreak + QUERY_CLASE_WHERE_BY_COD;

  QUERY_UPDATE_PROJETS_BY_COD =
    'UPDATE tab_projects'+ sLineBreak +
    '   SET name = :name, '+ sLineBreak +
    '       description = :description, '+ sLineBreak +
    '       start_date = :start_date, '+ sLineBreak +
    '       end_date = :end_date, '+ sLineBreak +
    '       status = :status'+ sLineBreak +
    QUERY_CLASE_WHERE_BY_COD;

  QUERY_DELETE_PROJECT_COD =
    'DELETE ' + sLineBreak +
    '  FROM tab_projects ' + sLineBreak +
    QUERY_CLASE_WHERE_BY_COD;

implementation

end.
