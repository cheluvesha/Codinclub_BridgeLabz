class Wage{
	final int partTime=0;
	int salary=0;
	final int empRatePerHour=20;
	int empHours;
public void calculateWage(){
        int check=(int)(Math.floor(Math.random()*10)%2);
        if(partTime==check){
             empHours=4;
         }
         else{
             empHours=8;
         }
         salary=empRatePerHour*empHours;
         System.out.println(salary);
}
}

public class PartAndFullTimeWage{
public static void main(String args[]){
	Wage wage=new Wage();
	wage.calculateWage();
}
}
