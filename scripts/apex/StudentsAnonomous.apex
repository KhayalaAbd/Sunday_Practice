Students str = new Students();
str.firstName = 'Khayala';
str.lastName = 'Abdullayeva';
str.classYear = 2023;
str.majorstream = 'Salesforce';
system.debug(str.generateReport());

Students str1 = new Students();
str1.firstName = 'Hally';
str1.lastName = 'Kayal';
str1.classYear = 2023;
str1.majorstream= 'Senior Salesforce';
system.debug(str1.generateReport());