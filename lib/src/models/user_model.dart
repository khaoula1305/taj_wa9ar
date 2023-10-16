/// A placeholder class that represents an entity or model.
class UserModel {
  const UserModel(this.id, this.email, this.username,this.website);

  final int id;
  final String username;
    final String email;
    final String website;

     factory  UserModel.fromMap(Map<String, dynamic> json) { 
      return UserModel( 
         json['id'], 
         json['email'], 
         json['username'], 
         json['website'], 
      );
    }

}
