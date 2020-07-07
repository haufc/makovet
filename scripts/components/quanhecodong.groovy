import org.craftercms.blueprints.headless.RelationSearchHelper
def searchHelper = new RelationSearchHelper(elasticsearch, urlTransformationService)
def posts = searchHelper.searchRelation(null)
println "Posts:"
print posts

templateModel.posts = posts