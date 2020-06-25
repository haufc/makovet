import org.craftercms.blueprints.headless.MailService

println "Processing Contact Us Request with values:"
println params

def service = new MailService()
// SMTP server information:
service.setHost('smtp.gmail.com')
service.setPort('587')

service.sendEmail(params.email, "haufc1997@gmail.com", "anhnt@keysoft.vn", params.title ,
                  "/templates/mail/mail.ftl",[data:"modle", "of":"theTemplate"])
