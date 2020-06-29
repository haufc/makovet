import org.craftercms.blueprints.headless.NewsSearchHelper
def searchHelper = new NewsSearchHelper(elasticsearch, urlTransformationService)
def cate = "internalnews";
def news = searchHelper.searchNews(cate, 0)
println "News:"
print news

templateModel.news = news