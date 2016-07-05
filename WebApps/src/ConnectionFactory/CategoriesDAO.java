package ConnectionFactory;

import java.util.List;

import model.Categories;

public interface CategoriesDAO {
	public void createCategories(Categories categories);
	public int findCategories(String name);
	public List<Categories> getFirstGrade() ;
	public List<Categories> findCategoriesByGrade(int grade,String parent);
}
