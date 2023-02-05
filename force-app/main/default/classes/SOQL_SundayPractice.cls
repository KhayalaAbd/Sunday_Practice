    public  class SOQL_SundayPractice {
    public static List<Contact> fetchContacts() {
        list<contact> query  =[SELECT AccountId, FirstName, LastName, Email FROM Contact];
        system.debug(query);
       return query;
    }

    public static List<Account> fetchAccountsWithoutPhone() {
        list<account> acc= [SELECT Id, Name FROM Account WHERE Phone = null ORDER BY Name];
        system.debug(acc);
        return acc;
    }
    public static List<Contact> fetchaccountContacts() {
        list<contact> cnt= [SELECT Id, FirstName, LastName FROM Contact WHERE AccountId = null];
        system.debug(cnt);
        return cnt;
    }
    public static List<AggregateResult> fetchOpportunity(){
        List<AggregateResult> opp = [Select  count(Id) FROM Opportunity];
        system.debug(opp);
        return opp;
    }
    public static List<Opportunity> fetchOpportunity_withstaged (){
        List<Opportunity> oppstg = [SELECT id,stageName ,amount FROM Opportunity where StageName = 'Closed Won ' and amount >= 35000];
        system.debug(oppstg);
        return oppstg;
    }
    public static list<contact> fetchContact_and_Account_lastName_Desc (){
        list<contact> wthacc = [SELECT id ,firstname ,LastName , account.Name FROM contact ORDER BY LastName DESC];
        system.debug(wthacc);
        return wthacc;

    }
    public static list<Account> fetchAccount_with_opport_withclosed(){
        list<Account> accOpp = [SELECT id ,name , (SELECT id, name ,stageName FROM Opportunities WHERE stageName != 'Closed Lost') FROM account ];
        system.debug(accOpp);
        return accOpp;
    }
          public static List<Opportunity> getTop10Opportunities() {
          List<Opportunity> opps = [SELECT Amount  FROM Opportunity ORDER BY Amount DESC limit 10];
          system.debug(opps);
          return opps;
        }
        public static List<Opportunity> getLower20Opportunities() {
            List<Opportunity> opps = [SELECT Amount, StageName FROM Opportunity ORDER BY Amount DESC];
            List<Opportunity> lower20 = new List<Opportunity>();

            for (Opportunity opp : opps) {
              if (opp.StageName != 'Closed Won' && opp.StageName != 'Closed Lost') {
                lower20.add(opp);
              } else if (opp.StageName == 'Closed Won' || opp.StageName == 'Closed Lost') {
                return lower20;
              }
              if (lower20.size() == 20) return lower20;
            }
            return lower20;
          }    
}