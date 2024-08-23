import 'cpf.dart';
import 'dto/dto_professor.dart';
import 'interface/dao_professor.dart';

class Professor {
  late dynamic id;
  late String nome;
  late String? descricao;
  late String cpf;
  late String _status = 'A';

  String get status => _status;
  set status(String status) {
    if (status != 'A' || status != 'I')
      throw Exception('Status deve ser "A" ou "I".');
    _status = status;
  }

  late IDAOProfessor dao;
  late DTOProfessor dto;

  Professor({required this.dto, required this.dao}) {
    id = dto.id;
    nome = dto.nome;
    descricao = dto.descricao;
    cpf = dto.cpf;
    CPF(cpf); //Valida cpf
    status = dto.status;
  }

  eNomeNaoVazio() {
    if (nome.isEmpty) throw Exception('Nome não pode ser vazio!');
  }

  DTOProfessor salvar(DTOProfessor dto) {
    eNomeNaoVazio();
    return dao.salvar(dto);
    //INSERT INTO professor (nome, descricao, cpf, status) VALUES (xxxx, xxxx, 000.000.000-00, 'A');
  }

  DTOProfessor excluir(dynamic id) {
    return dao.excluir(id);
    //DELETE FROM professor WHERE ID = ID;
  }

  DTOProfessor alterar(DTOProfessor dto) {
    return dao.alterar(dto);
    //UPDATE professor SET nome = dto.nome, descricao = dto.descricao, cpf = dto.cpf, status = dto.status WHERE ID = dto.id;
  }

  DTOProfessor consultar(DTOProfessor dto) {
    return dao.consultar(dto);
    //SELECT * FROM professor WHERE nome = dto.nome;
  }
}
