# Mini App Task
by Alexander Barragán

## Description
This a simple one-screen Flutter app that features a list of dropdown items fetched from a simulated API call.

## Considerations
- I left the call with my recruiter under the impression that I would have two days to complete the task. I didn't know it was actually a timed task and when I started the assessment, I didn't have the availability to complete this task.
- I asked my recruiter for permission to complete it out of Coodesh. Permission was granted.
- No IA tools like LLMs were used to complete this task as shown on the attached videos
- Documentation and own notes were used, though.
- I was unable to save the original instructions for the task before exiting from the Coodesh platform, si this task was completed under many assumtioms originated from what I remember about those instructions.

## Details
- API call simulation works thorugh a Future.delayed and a local json as a mock response.
- No configs for http or dio were actually coded but they were mentioned, considered and described in the attached videos.
- Each dropdown item allows the user to mark it as favourite.
- Favourites do not persist because of lack of time to implemented shared_preferences. However, a description on how I wuld have approached that functionality is included on the attached videos.
- Searchbar was not implemented because of lack of time.
- All state management was handled through Riverpod providers.
- A custom clean architecture effort was done to keep a maintainable project structure. It was designed under the assumption that the item list would be only one module of a growing app.
- UI was clearly separated from business logic and any other type logic.

## Video recordings of the development of the task
My coding session for this task was screen recorded into two parts and uploaded to Google Drive. You will find them by following the link below:
https://drive.google.com/drive/folders/1C3-0Ff5k9opFHpFjFstEHEjnKqik_Drd?usp=sharing

## Last annotations

I appreciate your felxibility. I tried to be as transparent as possible about the resources I used and definitely did not use AI, which would have interestingly -and probably- enabled me to finish the task within the given 80 minutes. I hope this helps you determine whether we could be a successful match or not. 

Have a nice day!
