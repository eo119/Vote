package model.eneity;

public class VoteObj {
	private Long id;
	private String name;
	private Integer count;
	
	

	public VoteObj() {
	}

	public VoteObj(String name,Long id,Integer count) {
		this.name = name;
		this.id=id;
		this.count=count;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	

	public long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "VoteObj [id=" + id + ", name=" + name + ", count=" + count + "]";
	}

	

	

	
	
	

}
