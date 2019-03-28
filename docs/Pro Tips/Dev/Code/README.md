Programmers spend more time reading and understanding old code, than writing new code. Programmers spend much more time trying to understand their colleagues' code than actually contributing. I am not the only one that agrees with this.  
https://blog.codinghorror.com/when-understanding-means-rewriting/  
  
## So, some coding conventions must be followed, so other people may be able to understand your code.  
  
* Commenting is very important  
  
* Test-driven-development is great, but it does not replace writing good quality, clean, succinct, commented, indented code. Your compiler and Jenkins process is easy to please. But other humans may still be very confused by your code.  
  
## Most important concerns to decide at the start of the project:  
  
* Indentation  
    **Tabs vs spaces (how many spaces?)**  
    Then, everyone configure your IDE to use tabs or 2 spaces or 4 spaces. See `pro tips > ide > auto-formatting`.  
  
* To write unit tests first (if feature requests are made slowly, methodically, and the project is stable), or write unit tests after some features already exist (if we don't know what we're building until it's built, lol sad but very true).  
  
## Other questions you may want to decide with the team:  
  
*  **variable naming**  
    **camelCase** vs **under_scores**  
    or something fancier like **BEM**  
  
* Whether to differentiate between **functions/properties** variable names? Or to have the same naming convention for both.  
  
* In React: To use container architecture.  
* In React-Redux: To use Action Creators or send directly to Reducer. To use Thunks or Middleware for async requests. 