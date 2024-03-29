package vote.model.DAO;

import java.util.List;
import java.util.Optional;

import vote.model.entity.User;
import vote.model.entity.VoteObj;

public interface VoteDAO {
	
	
	/**
	 * 1.查詢所有投票資料
	 * @return 投票資料列表
	 */
	public List<VoteObj> findAllVoteLists();
	
	/**
	 * 2.根據Id查詢投票
	 * @return VoteObj
	 */
	public Optional<VoteObj> findVoteObjById(Integer Id);
	
	/**
	 * 3.新增一筆投票資料
	 */
	public void addVote(String name);
	
	/**
	 *4. 刪除一筆投票資料
	 */
	public void deleteVote(Integer id);
	
	/**
	 * 5.新增一筆計數
	 */
	public Integer updateVoteObjCountById(Integer id);
	
	
	/**
	 * 6.查詢所有使用者資料
	 * @return 使用者資料列表
	 */
	public List<User> findAllUsers();
	
	/**
	 * 7.根據id查詢使用者
	 * @return User
	 */
	public Optional<User> findUserByUserName(String userName);
	
}
