using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Text.RegularExpressions;

namespace Maitonn.Core
{
    public class StringFilterStream : Stream
    {
        private static readonly Regex RegexRemoveWhitespace = new Regex(">[\r\n][ \r\n\t]*<", RegexOptions.Multiline | RegexOptions.Compiled);
        private static readonly Regex RegexRemoveWhitespace2 = new Regex(">[ \r\n\t]+<", RegexOptions.Multiline | RegexOptions.Compiled);
        private static readonly Regex RegexRemoveWhitespace3 = new Regex(@"(?<=[^])\t{2,}|(?<=[>])\s{2,}(?=[<])|(?<=[>])\s{2,11}(?=[<])|(?=[\n])\s{2,}", RegexOptions.Multiline | RegexOptions.Compiled);
        private Stream _sink;
        private long _position;

        public StringFilterStream(Stream sink)
        {
            _sink = sink;

        }

        public override bool CanRead { get { return true; } }
        public override bool CanSeek { get { return true; } }
        public override bool CanWrite { get { return true; } }
        public override void Flush() { _sink.Flush(); }
        public override long Length { get { return 0; } }

        public override long Position
        {
            get { return _position; }
            set { _position = value; }
        }
        public override int Read(byte[] buffer, int offset, int count)
        {
            return _sink.Read(buffer, offset, count);
        }
        public override long Seek(long offset, SeekOrigin origin)
        {
            return _sink.Seek(offset, origin);
        }
        public override void SetLength(long value)
        {
            _sink.SetLength(value);
        }
        public override void Close()
        {
            _sink.Close();
        }

        public override void Write(byte[] buffer, int offset, int count)
        {
            var data = new byte[count];
            Buffer.BlockCopy(buffer, offset, data, 0, count);
            string s = Encoding.UTF8.GetString(buffer);
            s = FilterString2(s);
            var outdata = Encoding.UTF8.GetBytes(s);
            _sink.Write(outdata, 0, outdata.GetLength(0));
        }

        private string FilterString(string html)
        {
            html = RegexRemoveWhitespace.Replace(html, "><");
            html = RegexRemoveWhitespace2.Replace(html, "> <");
            return html;
        }
        private string FilterString2(string html)
        {
            html = RegexRemoveWhitespace3.Replace(html, string.Empty);
            return html;
        }
    }
}
