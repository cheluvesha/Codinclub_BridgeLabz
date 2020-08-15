import java.lang.*;
class Attendance{
        public static void main(String args[]){
                int present=1;
                int check=(int)(Math.floor(Math.random()*10)%2);
                if(present==check)
                System.out.println("Present");
                else
                System.out.println("Not Present");
}
}
