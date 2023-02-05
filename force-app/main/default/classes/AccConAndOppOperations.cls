public  class AccConAndOppOperations {
public static void AccConAndOpp (){
list<account> ListAccount =[select name,annualrevenue, type, AccountSource from account ];
System.debug('Acc: '+ ListAccount);

}
public static void AccConAndOpp2(string stagename, string leadsource){

    list<opportunity> Opp = [select name, amount from opportunity where leadsource=:leadsource and stagename=:stagename ];
    system.debug('Opp: ' + Opp );
    
    
    }
    
//Print the Annual revenue and name of all the accounts of type 'Customer - Direct' and print the
//Opportunity Name and Amount for the related 'Closed Won' opportunities. Each opportunity
//record should be printed in a different line

    public static void PrintAccountRevenue(){
        list<account> Accounts = [ select name, annualrevenue, (select name, amount from opportunities where stagename = 'Closed Won') from account where type = 'Customer - Direct'];
        for (account eachacc : Accounts) {
            system.debug('Account name :' + eachacc.Name + 'Annual revenue:' + eachacc.AnnualRevenue);
        for (opportunity eachopp : eachacc.Opportunities) {
            system.debug('Opportunity name: '+ eachopp.name + 'Amount:' + eachopp.Amount);
        }
            
        }



    }
    public static Account CreateAccount (string name, decimal annualRevenue, string type){
        if(name == null){
            System.debug('Account without name cannot be created!');
            return null;    
            } 
            Account acc = new Account();
            acc.Name = name;
            acc.AnnualRevenue = annualRevenue;
            acc.Type = type;
            insert acc;
            return acc;

        }
        


    }






