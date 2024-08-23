import '../dto/dto_professor.dart';

abstract class IDAOProfessor {
  DTOProfessor salvar(DTOProfessor dto);
  DTOProfessor excluir(DTOProfessor dto);
  DTOProfessor alterar(DTOProfessor dto);
  // DTOProfessor consultar(DTOProfessor dto);
}
