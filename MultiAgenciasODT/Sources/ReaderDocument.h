//
//	ReaderDocument.h
//	Reader v2.5.4
//
//	Created by Julius Oklamcak on 2011-07-01.
//	Copyright © 2011-2012 Julius Oklamcak. All rights reserved.
//
//	Permission is hereby granted, free of charge, to any person obtaining a copy
//	of this software and associated documentation files (the "Software"), to deal
//	in the Software without restriction, including without limitation the rights to
//	use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
//	of the Software, and to permit persons to whom the Software is furnished to
//	do so, subject to the following conditions:
//
//	The above copyright notice and this permission notice shall be included in all
//	copies or substantial portions of the Software.
//
//	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
//	OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//	WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//	CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import <Foundation/Foundation.h>

@interface ReaderDocument : NSObject <NSCoding>
{
@private // Instance variables

	NSString *__weak _guid;

	NSDate *__weak _fileDate;

	NSDate *__weak _lastOpen;

	NSNumber *__weak _fileSize;

	NSNumber *__weak _pageCount;

	NSNumber *__weak _pageNumber;

	NSMutableIndexSet *_bookmarks;

	NSString *_fileName;

	NSString *_password;

	NSURL *_fileURL;
}

@property (weak, nonatomic, readonly) NSString *guid;
@property (weak, nonatomic, readonly) NSDate *fileDate;
@property (weak, nonatomic, readwrite) NSDate *lastOpen;
@property (weak, nonatomic, readonly) NSNumber *fileSize;
@property (weak, nonatomic, readonly) NSNumber *pageCount;
@property (weak, nonatomic, readwrite) NSNumber *pageNumber;
@property (nonatomic, readonly) NSMutableIndexSet *bookmarks;
@property (weak, nonatomic, readonly) NSString *fileName;
@property (nonatomic, readonly) NSString *password;
@property (weak, nonatomic, readonly) NSURL *fileURL;

+ (ReaderDocument *)withDocumentFilePath:(NSString *)filename password:(NSString *)phrase;

+ (ReaderDocument *)unarchiveFromFileName:(NSString *)filename password:(NSString *)phrase;

- (id)initWithFilePath:(NSString *)fullFilePath password:(NSString *)phrase;

- (void)saveReaderDocument;

- (void)updateProperties;

@end
