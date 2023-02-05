public  class Students {
    public string firstName ='';
    public string lastName = '';
    public integer classYear = 0;
    public string majorStream = '';
    public string generateReport(){
        system.debug('Report Generated for ' + firstName + '' + lastName + '' + ' of ' + classYear);
        return majorStream;
    }
    



    }
