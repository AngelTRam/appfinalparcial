class BbModel {
  var name;
  var birthday;
  var occupation;
  var img;
  var nickname;
  var status;
  var actor;
  var tempo;

  BbModel(
      {this.name,
      this.birthday,
      this.occupation,
      this.img,
      this.nickname,
      this.status,
      this.actor,
      this.tempo});

  factory BbModel.obtenerInstancia(Map<String, dynamic> data) => BbModel(
      name: data['name'],
      birthday: data['birthday'],
      occupation: data['occupation'],
      img: data['img'],
      nickname: data['nickname'],
      status: data['status'],
      actor: data['portrayed'],
      tempo: data['appearance']);
}
