import java.util.Scanner;

public class Switching{

   public static void main(String[] args) {
   Scanner sn= new Scanner(System.in);
   int season;
   
   System.out.println("\nSeasons: ");
   System.out.println("January to March - Winter" );
   System.out.println("April to June - Spring" );
   System.out.println("July to September - Summer" );
   System.out.println("October to December - Fall" );
   
   System.out.println("\nEnter month in numeric form: ");
   season=sn.nextInt();

    switch(season)
    {
    case 1:
        System.out.println ("It's Winter time!");
        break;
    case 2:
        System.out.println ("It's Winter time!");
        break;
    case 3:
        System.out.println ("It's Winter time!");
        break;
    case 4:
        System.out.println ("It's Spring time!");
        break;
    case 5:
        System.out.println ("It's Spring time!");
        break;
    case 6:
        System.out.println ("It's Spring time!");
        break;
    case 7:
        System.out.println ("It's Summer time!");
        break;
    case 8:
        System.out.println ("It's Summer time!");
        break;
    case 9:
        System.out.println ("It's Summer time!");
        break;
    case 10:
        System.out.println ("It's Fall time!");
        break;
    case 11:
        System.out.println ("It's Fall time!");
        break;
    case 12:
        System.out.println ("It's Fall time!");
        break;

    default:
        System.out.println ("Invalid Input! ");
        break;
         }
     }
}
   
