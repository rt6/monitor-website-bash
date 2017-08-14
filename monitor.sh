SITESFILE=/path/to/sites.txt #list the sites you want to monitor in this file
EMAILS="you@email.com,someone@email.com" #list of email addresses to receive alerts (comma separated)
DATE=`date +%Y-%m-%d:%H:%M:%S`

while read site; do
    if [ ! -z "${site}" ]; then

        CURL=$(curl -s --head $site)

        if echo $CURL | grep "200 OK" > /dev/null
        then
            #echo "The HTTP server on ${site} is up!"
            echo "[$DATE] [$site] down !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        else

            #MESSAGE="This is an alert that your site ${site} has failed to respond 200 OK."
            #for EMAIL in $(echo $EMAILS | tr "," " "); do
            #    SUBJECT="$site (http) Failed"
            #    echo "$MESSAGE" | mail -s "$SUBJECT" $EMAIL
            #    echo $SUBJECT
            #    echo "Alert sent to $EMAIL"
            #done
            echo "[$DATE] [$site] up"
        fi
    fi
done < $SITESFILE
