%hook NSMutableData
- (void)appendBytes:(const void *)bytes length:(NSUInteger)length
{
NSLog(@"NSMutableData: appendBytes: is called");
%orig;
//NSLog(@"NSMutableData: appendBytes =%@  , length=%@ ",bytes , length);
}
%end

%hook BBJavaScriptBridge

-(void)initBaseScript {
NSLog(@"BBJavaScriptBridge: initBaseScript: is called");

%orig;

NSLog(@"BBJavaScriptBridge: =%@",self);

}

- (void)eval:(id)arg1
{
NSLog(@"BBJavaScriptBridge: eval: is called");

%orig;

NSLog(@"BBJavaScriptBridge: eval arg1=%@",arg1);

}

- (void)stringify:(id)arg1
{
NSLog(@"BBJavaScriptBridge: stringify: is called");

%orig;

NSLog(@"BBJavaScriptBridge: stringify arg1=%@",arg1);

}
%end

%hook BBWindow

-(void)addScript:(id)arg1 withSourceURL:(id)arg2 {
NSLog(@"BBWindow: addScript: is called");

%orig;
NSURL *url=(NSURL*)arg2;
NSString *str=[url absoluteString];
//UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"BBWindow"  message:str delegate:nil cancelButtonTitle:@"Thanx" otherButtonTitles:nil];
//[alert show];
//[alert release];
NSString *result = [[NSString alloc] initWithData:arg1  encoding:NSUTF8StringEncoding];
NSLog(@"BBWindow:  addScript arg1 = %@",result);
NSLog(@"BBWindow:  addScript arg2 = %@",str);
}

-(void)setAppearance:(id)arg1
{
%orig;
NSLog(@"BBWindow: setAppearance");
NSLog(@"BBWindow: arg1=%@",arg1);
}
%end

%hook TAWindow

-(void)addScript:(id)arg1 withSourceURL:(id)arg2 {
NSLog(@"TAWindow: addScript: is called");

%orig;
//NSURL *url=(NSURL*)arg2;
//NSString *str=[url absoluteString];
//UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"TAWindow"  message:str delegate:nil cancelButtonTitle:@"Thanx" otherButtonTitles:nil];
//[alert show];
//[alert release];
//NSLog(@"TAWindow: addScript arg1 =%@", arg1);
NSLog(@"TAWindow: addScript arg2 =%@",arg2);

//NSLog(@"TAWindow: decodeScript arg1 =%@",[TAWindow decodeScript:arg1]);
}

+ (void)decodeScript:(id)arg1 {
NSLog(@"TAWindow: decodeScript: is called");

%orig;

//NSLog(@"TAWindow: decodeScript arg1 =%@", arg1);

}

%end

%hook BBAppDelegate

-(void)applicationDidFinishLaunching:(id)application {
%orig;

UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Welcome" message:@"Hello akash " delegate:nil cancelButtonTitle:@"Thanx" otherButtonTitles:nil];
[alert show];
[alert release];
}

%end

%hook TAAppDelegate

-(void)applicationDidFinishLaunching:(id)application {
%orig;

UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Welcome"
message:@"Welcome to your iPhone Brandon!"
delegate:nil
cancelButtonTitle:@"Thanks"
otherButtonTitles:nil];
[alert show];
[alert release];
}

%end

%hook BBJavaScriptBridge

-(void)addScript:(id)arg1 withSourceURL:(id)arg2 {
NSLog(@"BBJavaScriptBridge: addScript: is called");

%orig;
NSURL *url=(NSURL*)arg2;
NSString *str=[url absoluteString];
UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"BBJavaScriptBridge"  message:str delegate:nil cancelButtonTitle:@"Thanx" otherButtonTitles:nil];
[alert show];
[alert release];
NSLog(@"BBJavaScriptBridge: arg1 =%@",arg1);
NSLog(@"BBJavaScriptBridge: arg2 =%@",arg2);
}

%end

%hook BBJavaScriptContext

-(void)addScript:(id)arg1 withSourceURL:(id)arg2 {
NSLog(@"BBJavaScriptContext: addScript: is called");

%orig;
NSURL *url=(NSURL*)arg2;
NSString *str=[url absoluteString];
UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"BBJavaScriptContext"  message:str delegate:nil cancelButtonTitle:@"Thanx" otherButtonTitles:nil];
[alert show];
[alert release];
NSLog(@"BBJavaScriptContext: arg1 =%@",arg1);
NSLog(@"BBJavaScriptContext: arg2 =%@",arg2);
}
- (void)initBaseScript
{
NSLog(@"BBJavaScriptContext: initBaseScript");
}

- (void)handle:(id)arg1 {
NSLog(@"BBJavaScriptContext: handle: is called");

%orig;
NSLog(@"BBJavaScriptContext: handle arg1 =%@",arg1);

}
%end

%hook BBAction

+(void)requestForUrlConfig:(id)arg1 completionHandler:(id)arg2 {
NSLog(@"BBAction: requestForUrlConfig: is called");

%orig;



//NSLog(@"BBAction: arg1 =%@",arg1);
}

- (void)AESDecrypt:(id)arg1 handler:(id)arg2
{
%orig;

UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"BBAction"  message:@"AESDecrypt" delegate:nil cancelButtonTitle:@"Thanx" otherButtonTitles:nil];
[alert show];
[alert release];

NSLog(@"BBAction: AESDecrypt arg1 =%@",arg1);
}

- (void)_open:(id)arg1 handler:(id)arg2
{
%orig;

UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"BBAction"  message:@"_open" delegate:nil cancelButtonTitle:@"Thanx" otherButtonTitles:nil];
[alert show];
[alert release];

NSLog(@"BBAction: _open arg1 =%@",arg1);
}

+ (void)readFile:(id)arg1 handler:(id)arg2{
%orig;


NSLog(@"BBAction: readFile arg1 =%@",arg1);
}
%end

%hook BBTabBarController

-(void)initWithSetting:(id)arg1 {
NSLog(@"BBTabBarController: initWithSetting: is called");

%orig;


}

%end


%hook BBTableViewController

-(void)initWithSetting:(id)arg1 {
NSLog(@"BBTableViewController: initWithSetting: is called");

%orig;


}

%end

%hook BBResource
+ (void)dataForResource:(id)arg1 {
NSLog(@"BBResource: dataForResource: is called");

%orig;

//NSLog(@"BBResource: dataForResource arg1 =%@",arg1);
}

- (void)syncFiles:(id)arg1 {
NSLog(@"BBResource: syncFiles: is called");

%orig;

NSLog(@"BBResource: syncFiles arg1 =%@",arg1);
}

+ (void)base64ForResource:(id)arg1 {
NSLog(@"BBResource: base64ForResource: is called");

%orig;

NSLog(@"BBResource: base64ForResource arg1 =%@",arg1);
}

+ (void)md5:(id)arg1 {
NSLog(@"BBResource: md5: is called");

%orig;
//NSString *result = [[NSString alloc] initWithData:arg1  encoding:NSUTF8StringEncoding];
//NSLog(@"BBResource: md5 arg1 =%@",arg1);
}

+ (void)parseResources:(id)arg1 {
NSLog(@"BBResource: parseResources: is called");

%orig;

//NSLog(@"BBResource: parseResources arg1 =%@",arg1);
}

%end

%hook BBRoot

-(void)update:(id)arg1 {
NSLog(@"BBRoot: update: is called");

%orig;
NSLog(@"BBRoot: update arg1 =%@",arg1);

}

%end

%hook BBWebViewContext

- (void)receiver:(id)arg1 {
NSLog(@"BBWebViewContext: receiver: is called");

%orig;
NSLog(@"BBWebViewContext: receiver arg1 =%@",arg1);

}

%end