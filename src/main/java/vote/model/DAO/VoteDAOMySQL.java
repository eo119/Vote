package vote.model.DAO;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import vote.model.entity.User;
import vote.model.entity.VoteObj;


@Repository
public class VoteDAOMySQL implements VoteDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<VoteObj> findAllVoteLists() {
		String sql = "SELECT * FROM vote.voteObj;";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(VoteObj.class));
	}

	@Override
	public void addVote(VoteObj voteObj) {
		String sql = "insert into VoteObj(id, name) values(?, ?)";
		jdbcTemplate.update(sql, voteObj.getId(), voteObj.getName());

	}

	@Override
	public Optional<VoteObj> findVoteObjById(Integer id) {
		String sql = "select * from voteobj where id = ?";
		VoteObj voteObj = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(VoteObj.class), id);
		return Optional.ofNullable(voteObj);
	}

	@Override
	public void deleteVote(Integer id) {
		String sql = "delete from voteObj where id = ?";
		jdbcTemplate.update(sql, id);
	}
	
	@Override
	public Integer updateVoteObjCountById(Integer id) {
		VoteObj voteObj=findVoteObjById(id).get();
		Integer newCount=voteObj.getCount()+1;
		String sql= "update voteobj set count = ? where id = ?";
		jdbcTemplate.update(sql, newCount, id);
		return newCount;
	}

	@Override
	public List<User> findAllUsers() {
		String sql = "select userId, username, password from user";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class));
	}

	@Override
	public Optional<User> findUserByUserName(String userName) {
		try {
			
			String sql = "select userId, username, password from user where userName = ? ";
			User user = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(User.class),userName);
			return Optional.ofNullable(user);
			
		} catch (EmptyResultDataAccessException e) {
			return Optional.empty();
		}
	}
	
	

	

}
