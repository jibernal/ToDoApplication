@ECHO OFF
IF "%1"=="start" (
    ECHO start Ensolvers Evaluation
    start "EnsolversEvaluation" java -jar -Dspring.profiles.active=prod -Dspring.config.location=application.properties EnsolversServer-0.0.1-SNAPSHOT.jar
) ELSE IF "%1"=="stop" (
    ECHO stop Ensolvers Evaluation
    TASKKILL /FI "WINDOWTITLE eq EnsolversEvaluation"
) ELSE (
    ECHO please, use "run.bat start" or "run.bat stop"
)
pause