//
//  AXHelpCommandHandlerBase.m
//  imem
//
//  Created by Zheng Shao on 1/22/14.
//  Copyright (c) 2014 axot.org. All rights reserved.
//

#import "AXHelpCommandHandlerBase.h"

@implementation AXHelpCommandHandlerBase

- (BOOL)handlerCommand:(NSString*)command withParameters:(NSArray*)params withSuperHelper:(AXHandlerHelp *)help
{
  if ([command isEqualToString:@"h"] ||
      [command isEqualToString:@"help"])
  {
    if (command == nil)  command = @"";
    if (params == nil)  params = @[];

    if (params.count == 0)
    {
      printf("iMem Command Help\n\n%s\n", help.handlerDescription.UTF8String);
    }
    else
    {
      printf("%s\n", self.handlerDescription.UTF8String);
      return YES;
    }
    return YES;
  }
  return NO;
}

- (BOOL)setHandler:(AXHandlerHelp*)handler
{
  [super setHandler:self];
  return YES;
}

- (NSString*)handlerDescription
{
  return @"[h | help]\n"
          "\t\tshow this description\n";
}

@end
