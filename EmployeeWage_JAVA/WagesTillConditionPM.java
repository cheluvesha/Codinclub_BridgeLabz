class WagesTillConditionPM{
        final static int isPartTime=0;
        final static int isFullTime=1;
public static void calculate(String company,int empRatePerHour,int totalDays,int totalHours){
        int hours=0;
        int days=0;
        int empHours;
        while(hours<=totalHours && days<totalDays){
              int check=(int)(Math.floor(Math.random()*10)%2);
                switch(check){
                case isPartTime:
                        empHours=4;
                        break;
                case isFullTime:
                        empHours=8;
                        break;
                default :
                        empHours=0;
                }
                hours+=empHours;
                days+=1;
  }
	int totalEmpWage=hours*empRatePerHour;
                System.out.println("Total Salary for the "+company+" is: "+totalEmpWage);
}
public static void main(String args[]){
calculate("Dmart",15,21,80);
calculate("reliance",20,22,100);
}
}


