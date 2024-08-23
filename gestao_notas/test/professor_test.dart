import '../dominio/professor.dart';
import '../dominio/dto/dto_professor.dart';
import '../dominio/interface/dao_professor.dart';

void main() {
  var dto = DTOProfessor(nome: 'João', cpf: '11228422958');
  var dao = DAOProfessorFake();
  var professor = Professor(dto: dto, dao: dao);
}

class DAOProfessorFake implements IDAOProfessor {
  @override
  DTOProfessor salvar(DTOProfessor dto) {
    return dto;
  }

  
  @override
  DTOProfessor excluir(DTOProfessor dto) {
    return dto;
  }

  @override
  DTOProfessor alterar(DTOProfessor dto) {
    return dto;
  }
}
