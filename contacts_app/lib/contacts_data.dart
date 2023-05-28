
//     contacts_data.dart

class Contact {  // a simple class where contact data
  // is defined
  String fullName;
  String phone;
  String email;
  String address;

  Contact( this.fullName, this.phone,
      this.email, this.address );
}

// To make the example as simple as possible,
// hardcode the initial data


List<Contact> myContactsList = [

  Contact(
      'Romain Hoogmoed',
      '478-301-6621',
      'romain.hoogmoed@live.mercer.edu',
      'Mercer, Macon, GA'
  ),
  Contact(
      'Emilie Lilly Olsen',
      '706-542-3428',
      'emilie.olsen@uga.edu',
      'UGA, Athens, GA'
  ),
  Contact(
      'John H. Doe',
      '478-987-1123',
      'john.doe@macon.com',
      'City Hall, Macon, GA'
  ),
  Contact(
      'Mary Roe',
      '478-691-9016',
      'mary.roe@airforce.gov',
      'Robins AFB, Warner Robins, GA'
  ),
  Contact(
    'Everett Reynolds',
    '404-863-8109',
    '11008623@live.mercer.edu',
    'Mercer University, Macon , GA'
  ),
  Contact(
      'Syed Saadat',
      '542-347-9087',
      '11017632@live.mercer.edu',
      'Mercer University, Macon , GA'
  ),
  Contact(
      'Tiffany Mull',
      '478-907-1255',
      '11037098@live.mercer.edu',
      'Mercer University, Macon , GA'
  ),
  Contact(
      'Joseph Peeples',
      '404-997-1165',
      '12875655@ung.edu',
      'University of North Georgia, Dahlonega, GA'
  ),
  Contact(
      'Kevin Zeske',
      '113-213-9988',
      'kevin_zeske_manager@panerabread.com',
      'Panera Bread, Sugar Hill , PA'
  ),
  Contact(
      'Lydia Plamp',
      '404-556-8888',
      '65478990@umt.edu',
      'University of Montana, Missoula , MT'
  ),
];

