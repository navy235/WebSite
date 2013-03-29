
namespace Maitonn.Web
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.ComponentModel.DataAnnotations;
    using System.Web.Mvc;

    public class GroupModel
    {
        #region Public Properties
        [ScaffoldColumn(false)]
        public int ID { get; set; }

        [Required(ErrorMessage = "请输入群组名称")]
        [Display(Name = "群组名称")]
        public string Name { get; set; }


        [Required(ErrorMessage = "请输入群组描述")]
        [Display(Name = "群组描述")]
        [DataType(DataType.MultilineText)]
        public string Description { get; set; }

        [UIHint("ForeignKeyForCheckBox")]
        [Display(Name = "群组角色")]
        [Required(ErrorMessage = "请选择群组角色")]
        public string RolesList { get; set; }
        #endregion
    }
}