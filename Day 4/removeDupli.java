package Day 4;

public class removeDupli {
    public static void main(String[] args){
        int a[]={23,45,67,2,3,4,5,5,5,6,7,8,8};
        List<Integer> uniqueList=new ArrayList<>();
        for(int i=0;i<a.length;i++){
            if(!uniqueList.contains(a[i])){
                uniqueList.add(a[i]);
            }
        }
        System.out.println(uniqueList);
    }
    
}
