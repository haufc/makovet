import org.craftercms.blueprints.headless.NewsSearchHelper
def searchHelper = new NewsSearchHelper(elasticsearch, urlTransformationService)
def news = searchHelper.searchNews(contentModel.newscategory_s, 0)
println "News:"
print news

templateModel.news = news