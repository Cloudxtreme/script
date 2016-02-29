cd /Users/d036242/dev/svn/opencmis/branches/server-osgi-enablement/chemistry-opencmis-osgi/chemistry-opencmis-osgi-server
mvn clean install
rm -R ~/Desktop/Dummy/chemistry-opencmis-osgi-server-0.5.0-SNAPSHOT
unzip -o ~/dev/svn/opencmis/branches/server-osgi-enablement/chemistry-opencmis-osgi/chemistry-opencmis-osgi-server/target/chemistry-opencmis-osgi-server-0.5.0-SNAPSHOT.jar -d ~/Desktop/Dummy/chemistry-opencmis-osgi-server-0.5.0-SNAPSHOT

cd /Users/d036242/dev/svn/opencmis/branches/server-osgi-enablement/chemistry-opencmis-osgi/chemistry-opencmis-osgi-client
mvn clean install
rm -R ~/Desktop/Dummy/chemistry-opencmis-osgi-client-0.5.0-SNAPSHOT
unzip -o ~/dev/svn/opencmis/branches/server-osgi-enablement/chemistry-opencmis-osgi/chemistry-opencmis-osgi-client/target/chemistry-opencmis-osgi-client-0.5.0-SNAPSHOT.jar -d ~/Desktop/Dummy/chemistry-opencmis-osgi-client-0.5.0-SNAPSHOT


