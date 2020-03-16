package aula09;

public abstract class TesteIterador {
	public static void main(String[] args) {
		VectorPessoas vp = new VectorPessoas();
		for (int i=0; i<10; i++)
			vp.addPessoa(new Pessoa("Bebé no Vector "+i,1000+i, Date.today()));
		Iterator vec = vp.iterator();
		BFIterator vecNew = vp.iteratorNew();
		while ( vec.hasNext() )
			System.out.println( vec.next() );
		ListaPessoas lp = new ListaPessoas();
		BFIterator lpNew = lp.iteratorNew();
		for (int i=0; i<10; i++)
			lp.addPessoa(new Pessoa("Bebé na Lista "+i,2000+i, Date.today()));
		Iterator lista = lp.iterator();
		while ( lista.hasNext() )
			System.out.println( lista.next() );
		for(int i=0;i<=5;i++) {
			if(vecNew.hasNext()) {
				vecNew.next();
			}
			if(lpNew.hasNext()) {
				lpNew.next();
			}
		}
		for(int i=0;i<=5;i++) {
			if(vecNew.hasPrevious()) {
				System.out.println(vecNew.previous());
			}
			if(lpNew.hasPrevious()) {
				System.out.println(lpNew.previous());
			}
		}
	}
}