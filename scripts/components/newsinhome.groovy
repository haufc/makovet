import org.craftercms.blueprints.headless.NewsSearchHelper
def searchHelper = new NewsSearchHelper(elasticsearch, urlTransformationService)
def news = searchHelper.searchNews(contentModel.newscategory_s, 0)
println "News:"
print news
def firstNew = news[0]
def lastNew = news[news.size()-1]

println "first"
println firstNew

println "last"
print lastNew

templateModel.news = news