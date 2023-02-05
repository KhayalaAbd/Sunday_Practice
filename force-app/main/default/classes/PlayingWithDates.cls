public  class PlayingWithDates {
    public void printDateOutput(){
    Date today = date.today();
    system.debug(today);

    date differDay = date.newInstance(2789, 11, 5);
    system.debug(differDay);
    date differDay2 = date.newInstance(1459, 3, 4);
    system.debug(differDay2);
    
    integer dayInt = 15;
    integer monthInt = 1;
    integer yearInt = 2023;

    date myDates = date.newInstance(yearInt, monthInt, dayInt);
    system.debug(myDates);


    }

    }
