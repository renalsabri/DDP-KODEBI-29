import std.stdio;

void main(){
    int[] Nilai = [625,148,436,673,53,961,768,478,263,810,205,728,538,1019,914,316,108,580,863,376];
    int[] Index = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    ulong c = Nilai.length;

    int h=0;
    while (h<c){
        int i=0;
        while (i<c-1){
            if (Nilai[i]>Nilai[i+1]){
                int k=Nilai[i];
                Nilai[i]=Nilai[i+1];
                Nilai[i+1]=k;
                int l=Index[i];
                Index[i]=Index[i+1];
                Index[i+1]=l;
            }
            i++;
        }
        h++;
    }

    int i=0;
    while (i<c){
        write(Index[i],' ');
        i++;
        
    }
    writeln(Nilai);
}