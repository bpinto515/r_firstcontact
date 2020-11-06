# Regular Expressions in R
email_df <- read.csv("email_list.csv")
email_df

# Regular Expressions in R
grep("@.+", c("test@testing.com", "not an email", "test2@testing.com"))

grep("@.+",  c("test@testing.com", "not an email", "test2@testing.com"), value=TRUE)

gsub("@.+", "@newdomain.com", c("test@testing.com", "not an email", "test2@testing.com"))

matches <- regexpr("@.*", c("test@testing.com", "not an email", "test2@testing.com"))
regmatches(c("test@testing.com", "not an email", "test2@testing.com"), matches)

matches <- regexpr("@.*\\.", email_df[,'Email'])
email_df[,'Domain'] = regmatches(email_df[,'Email'], matches)
email_df
table(email_df[,'Domain'])